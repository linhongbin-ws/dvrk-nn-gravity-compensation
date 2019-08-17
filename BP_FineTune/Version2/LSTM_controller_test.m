safe_upper_torque_limit=      [0.2
      0.8
      0.6
      0.2
      0.2
      0.2
      0];
safe_lower_torque_limit = [
      -0.2
      -0.1
      0
      -0.3
      -0.1
      -0.1
      0]
  GC_init_pos = [ 0
          0
          0
          0
          90
          0
          0]; 
% % Spawn GC Controllers and test
load('./model/LSTM/LSTM_fit_4096_dual_add_mlse4pol_sim.mat')
mtm_arm = mtm('MTMR');
nn_dynamicModel = @nn_gravityDynamics_pol;
mtm_gc_controller= nn_controller(mtm_arm,...
                net,...
                safe_upper_torque_limit,...
                safe_lower_torque_limit,...
                'MTMR',...
                fixWindowLength
                [1]);


% Move to gc controller start joint position and wait until MTM remains static
mtm_gc_controller.mtm_arm.move_joint(deg2rad(GC_init_pos));
pause(2.5);

% Start gc controller
mtm_gc_controller.start_gc();


