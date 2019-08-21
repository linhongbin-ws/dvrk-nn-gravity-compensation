function [y1] = nn_gravityDynamics(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 12-Jul-2019 20:27:15.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 7xQ matrix, input #1
% and returns:
%   y = 7xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.keep = [1 2 3 4 5 6];
x1_step2.xoffset = [-0.523595000649894;-0.244315493842152;-0.593385041562098;-1.3962036711135;-1.48352744350811;-0.698123778730893];
x1_step2.gain = [1.90992664371544;1.94229071710547;1.68523633722175;0.424422762262554;0.440740101051222;1.4324106685331];
x1_step2.ymin = -1;

% Layer 1
b1 = [-2.9617796319595521837;-2.1650574194579150777;1.7804688663260279657;-0.28649616170732739029;-1.9089610532045191427;-1.3139009206978851108;1.476818435835044685;0.920782187342539582;-0.63850472433588889576;1.5123506262117027976;-0.26217508914950604648;1.3851809238600854002;-0.31430908652718508867;0.9561190377689509079;0.76644921059220694204;0.62327166701519964853;0.96055478776655056627;-0.75744520479170851512;-0.39995577288004297012;0.35637165531282072317;1.0908039942731977412;-0.12889638920221754836;-0.41050786141720346789;0.56188626598384550093;0.73241109123154268801;-0.1183475476600662768;-0.92603323168173279356;-0.7423765896614265003;1.4919793767956841535;-0.97376184816576361047;1.2724169547017512016;-2.2069296305496455268;-1.7177695679926188177;-2.1380483482380214788;-1.1511371440335329552;1.7620339837095531088;-1.3832615458393866525;-1.2619908903015573109;1.7528304847447770953;2.568693424780615242];
IW1_1 = [0.032357409248689537884 -0.17338609087145182008 1.9399632273716549413 -0.10995964680017987491 0.0069712525688360744286 -0.035221385792146696347;0.0028068056331206634249 -0.26783106889903340875 -0.28993136106353439851 0.17146215140155485201 -2.0656382309078371584 0.011404590446692222314;0.0031830005015604841828 -0.14938157261218465433 -0.17661076126329403047 -1.2501557223651738049 -0.31882670881244218331 -0.010604946385032594861;-0.00078341676207847573202 -0.22649860737225804841 -0.26367555600440750752 -1.1389626255211902084 0.11255725570941103875 0.034440888515472008191;0.0048094287301720852618 0.88709086440250051186 1.0327730042088874018 -0.024791689593644986034 -1.2697379838538143115 0.16807282678698540201;0.0008024711602582959135 -0.25064708996640827632 -0.28520942809642052529 1.2712978518846054232 -1.2341635121840810463 -0.0206223162986797319;-0.25138105673299726561 0.84720359754113783168 0.97213389817562900763 0.91538207836354101854 0.10897072417182371296 0.19975537850964514286;-0.9736178420110725984 -0.38719994752450748177 -0.28316277668343142748 0.047476414091665850026 0.017849020908705770516 0.0079015998469939268539;-0.004648711246178362233 -0.34141546420118396021 -0.40617374610506917776 1.2921784175036836739 -0.12305791900339062284 0.12009515914163430839;-1.3859160351522097354 0.8711236757879278203 -0.065848976374543302659 -0.7141526244702727233 -0.13504437293188409352 -0.27069318570385136891;0.0019569818775813942711 0.30465339549700815036 0.35450525820073075511 -0.28251128462237179439 1.2432010262688195645 -0.76052028870461696464;-1.3542616562722007423 0.55145962656129821067 0.25512989767280619402 -0.18496722793783179628 -0.021489831093431152609 -0.081532292635471043107;-0.0013753232399652489705 -0.24468796138462589607 -0.28434511392927541706 -0.1367389902411663416 1.2876777151898011198 0.42616607415705548556;-1.2943467165594209067 -0.83594456305671616114 0.47406135599009779913 0.78504417137060056309 0.98564593749245110743 0.067269021872629911063;-0.445452113988241305 0.9110307952786325103 -1.1552723959748691929 0.96317469359087937164 -0.27546850451409127247 0.47699873553868232801;-0.4562525167989061603 0.86725892296521811531 -1.3411104892657457199 -1.0438156736710451078 -0.82452851242460312164 0.83529291941449335113;-0.0026261499945778405893 -0.24250590198089666538 -0.27848852595344686378 -1.1897469300840288753 -1.4750581157813460464 0.034620121987291044285;0.43678095361431851229 -0.90094617501452523012 1.1436008834808835122 -0.94901697102412074791 0.2695464506962400586 -0.46664396924366680075;-1.5246514249541505588e-05 0.23342987952632685 0.26612117138843188746 -1.0299286447758302376 -1.0255722514978662385 -0.010849630955076960959;0.0012875867827210113383 -0.15079593617510531067 -0.16816733281279805379 1.2056041659788665488 0.05206274136098815869 -0.0036966518758902171433;0.00039843127338965605468 -0.39122107744866624346 -0.442415726834899381 -0.23202244267639637876 1.8140347339370934687 -0.22708907086040466816;-0.005586728899702009081 -0.3310842832902970434 -0.39285027809211053862 0.75573371736452510383 -0.16464013290117668342 -0.030360280809137180774;-0.0085806300959526109889 0.41218333684953933904 0.47404082356613225224 1.0798486338554422748 0.070928312018699965491 0.16667278751639078016;0.77081798305845761199 -1.1857045382436839365 1.0519630434635671712 -0.35663177672951945629 -0.63321314607604617386 -0.97817609401459382212;-0.011840978970227986761 -0.7667711440759836794 -0.7727012798705107377 0.016501418374044531795 -0.12332295653521713197 -0.018617417388074982559;-0.0092651645757732825626 -0.55091729939223177404 0.028665140184138404589 0.73222191478597797865 0.1491755560868342767 0.14077598181695596957;0.0022921726115845367927 0.3743854600974700908 0.41726952885499324353 0.59402115927664089767 0.76168695985992518338 0.72047386596092688471;0.0015607571496031526388 -0.30815465104997996626 -0.36140808099221988225 -1.084613832062073735 -1.0856185441287016236 0.0078045246704176955005;0.0028118411655540962932 0.99480982900692727089 -0.042384291923476487274 -0.0013121151772657910044 0.00072957371062900276161 -0.002733416002225846908;-0.00017781180461743341316 0.21556066351007174831 0.2498412057737821601 1.059838203444409821 -1.1709043283953219916 0.012494316983828331405;1.5233632894285473736 0.3220268107716324768 0.26851039825910288927 -0.037732916615488949763 -0.028033376862776380328 0.01644618368446677803;0.0023722987460727943711 0.30616637541378205478 0.35926214440693965413 0.010711307137302311654 -1.9050614513294663599 0.056515123881011784801;0.00080280854023079154056 -0.45007825286520958263 -0.52470719373158958287 0.6354521726436301865 0.84984014680925201723 -0.044956890293358524324;-0.0038689668484796295965 -0.22156336886877411874 -0.24965582455315013521 -1.0045026336661500022 1.608946665163495382 0.077468277663450782478;0.0033882210129123320821 -0.22483153022314300573 -0.26544207087929583277 1.1783854028933475888 1.1361318841085299436 -0.080976233075955111884;0.0034907694665173142658 -0.21500565934428003678 -0.25224910548202333915 1.1294151317110334709 -1.1679955815403737507 -0.056752202190833545004;0.0013175284671796830618 1.0418441980685189119 1.252532509406266259 -0.18451841403368751671 -0.47620663717614869492 0.13693869798617369637;0.00070017333487307751617 -0.293760558000684735 -0.32464236474143531863 -0.15773649659546240542 -1.1231790766766105438 -0.70312985164496644153;0.0042207707146591473893 -1.24527018929496891 -0.090088155490178178919 -0.017110647825450298054 0.0037391369071897257934 -0.0041058544414960410421;0.019590449387880310567 1.1843714146378823138 -0.57340145334213010742 -1.6508874151801173902 -0.26828984565853492006 0.028577384974309914811];

% Layer 2
b2 = [0.43293461183239440038;0.17200746999909644064;1.2600387325838067198;0.91647828596815972269;-0.78235361585621487901;-0.45860320249364200373];
LW2_1 = [0.059387233242814911616 0.23769264684554058942 -0.11435920381380795807 -0.065691600725660784232 0.39491746168801594719 -0.0033893227294061996704 -0.081525266470571317035 -0.98092770355163760865 0.023278051379527247428 0.076993064412393300011 -0.01583092011280548897 -0.4361951308860399501 0.0045580733854274886954 0.0048165739815960850051 0.53466293128852082628 -0.00038209701963265533522 -0.026089369558053722431 0.54431990408607988652 -0.02387977699444890009 0.030200356627792423331 0.021207318589243726037 -0.082608664972068382437 -0.095691923627998359825 0.00017050537971881104941 0.28819657004347976059 0.032377798693501907978 -0.0030841657946370712451 -0.0047018552103903904493 0.0061381845910745786929 -0.012515293946352704785 0.49549572705134403705 -0.4816764923776619689 0.0085870956816582258431 -0.054554921485752784494 -0.017485469983694625767 -0.069387075990816823867 -0.10469404023765552236 0.0064842873449419110091 0.063251756266457223599 -0.0097342454586891082741;-0.023026383948999595147 0.47031249524686130625 -0.58991498452326962543 1.105635741953527873 -0.099680235767100375255 0.2113402774495274361 0.038834011561617212682 -0.017026506195348203171 0.47893130257833871344 0.0004110546121702643484 0.039033741102123438449 0.0036565641432014864276 -0.094823495546675642953 -0.00021908044884471573129 -0.40527235903692476748 -0.00030235898494717456872 0.12784199840694701611 -0.41447246251368241587 -0.41677946244944330534 -0.6108494686039606103 0.13889048400621001322 -1.0751891782129860964 0.54897702878434673224 0.00095870373556562228645 0.77071390592900379524 0.0084535127409316613428 -0.10460602495738345608 -0.32304974654100404585 1.1792709802078158443 0.47818029226471403526 0.0053583327858472539623 -0.55783349494118317224 0.77216872201342101611 -0.11021314095458745186 -0.13784795298249169493 0.57010289888259557678 0.21258529037221968183 0.10134774024219361799 -0.59004564662863800972 -0.0024512056294109388702;0.2354324899354694467 0.60804357766879824077 -0.82104848743205693928 1.4960711393401964209 -0.15776560978190568019 0.27593521483838739927 0.061870061055740464828 -0.010454991040549988998 0.64460865767664132786 0.0048957756879719743076 0.053829806239699073966 -0.00471007611083192404 -0.12627686363816792436 -0.00068273456408805951925 0.31475701224092617059 -0.0035039576833679419131 0.15960510850050652065 0.32681759856774611483 -0.53348973471905003496 -0.79439240714702585855 0.18238720034090541433 -1.4653538766624913947 0.75455450272078472551 0.0036274108820576276419 0.89246043713761968874 0.023898091310065511239 -0.14520775105646169245 -0.4485285100999131247 -0.076756882791460603888 0.64837850052974843607 0.0053376875316778716815 -0.71118057160599212896 1.0153728151056014006 -0.13731735214933959988 -0.20829321744180540055 0.78096960036822060669 0.31943384217197806629 0.1403642855184594751 -0.030054748184362361368 -0.012104753308626656563;0.018423521067549540609 -0.086207295057353292012 -1.4660125796548526544 2.4463095790649811434 -0.077969816132609920389 -0.65174583316366374586 0.024200527066980843938 -0.0022942860554174349455 -0.74207775682444920839 0.0016098028693980015284 -0.019806110114112835535 -0.0059380942675041608475 -0.060940158111510947525 -0.0012775156842186529901 0.25954668279145082233 -0.00017799741053926767132 0.23678356137905168244 0.26591554223160890347 0.729727939357730504 2.3844970010915753633 -0.0048879933271919022431 0.88183243145593992462 0.55012469518972806348 -0.00032746196433633092309 -0.13642904659791707522 -0.0023594411303374598909 -0.056942457358924225552 -0.52105754960935257714 0.010125467221094822112 0.76861778445968176321 0.0049545217825292097585 0.14823671590333412085 -0.49837863348325783797 -0.51034499076875616819 0.35935689001834991707 -0.83910786265831138753 -0.02727112547566054937 0.048044764079454807537 0.015318682190954941227 -0.0011257446145873485979;0.046309893207726604558 0.45016813507250558191 -1.0218440190413822233 -0.64228569691476167236 1.5456440560322302069 1.7454035587673808472 -0.0017186484075411411626 0.0028219703715709125273 0.15779881625709551995 0.0004534529686684002879 0.24211805233489333555 -0.0017111694155480913944 0.52304715633261966712 0.00235528855999696295 -0.88499093304894793643 -0.0013744634744968882087 1.1257047376255477911 -0.89950744765844936612 1.6764377341706049318 0.38817936722490942181 -0.41433600162402245415 -0.90686911382077228794 0.13516664036036113439 0.0023752609029515188085 0.11357661573178490233 -0.010395621173895461253 -0.073176288304811709651 -1.1314454261983879491 -0.00038591905091310562976 -2.4322832469164517022 -0.0025555878996977600924 -2.1331988524582472522 -1.53505139777232813 1.9889763060236060888 1.2360527332719304372 2.1369885036913296439 -0.39881561249891811505 0.10483465901486219152 -0.011641031125114194647 0.006630255450923409552;-0.04966755886357201305 0.25342308803091834202 0.20017580033068885226 -1.1806028429895811804 -0.056466373594364981103 -0.075481250301239158351 -0.094405160462939716193 -0.006382242306937378068 -0.83262639956080042314 -0.055029475556990906093 -0.84658811061674399401 0.073025831930291482119 1.350262833425336817 -0.0081253729006806382079 -0.42752577227149640704 -0.0037727037148853419767 -0.13351983619599519515 -0.4244721510619448579 0.28386327609292355545 -0.28059609447348016209 0.57518469410014372301 -0.76932969179433241536 1.2715853546517195127 0.0034741346633619762767 0.12211413447854892189 -0.10750381477118681195 -0.82948731174250467379 -0.11587645930496201507 -0.044317928493023815706 0.35339830163957747233 -0.010366490822346467737 -0.73807499375178842183 0.38228772166661367793 0.7277922618343973804 -0.38209769485715944226 0.85014895027969783481 0.01112634853760107248 1.1804755713200076883 0.03345848562068292481 0.029034500229391531356];

% Output 1
y1_step2.ymin = -1;
y1_step2.gain = [23.4302129078175;2.28983172664627;3.07302086531729;4.4767928533476;12.3517132098434;22.8937006212783];
y1_step2.xoffset = [-0.0132777628782117;0.051405276186363;-0.091124989330597;-0.204536776119757;-0.0866827336689823;-0.0425489391007535];
y1_step1.xrows = 7;
y1_step1.keep = [1 2 3 4 5 6];
y1_step1.remove = 7;
y1_step1.constants = 0;

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = removeconstantrows_apply(x1,x1_step1);
xp1 = mapminmax_apply(xp1,x1_step2);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step2);
y1 = removeconstantrows_reverse(y1,y1_step1);
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Remove Constants Input Processing Function
function y = removeconstantrows_apply(x,settings)
y = x(settings.keep,:);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end

% Remove Constants Output Reverse-Processing Function
function x = removeconstantrows_reverse(y,settings)
Q = size(y,2);
x = nan(settings.xrows,Q,'like',y);
x(settings.keep,:) = y;
x(settings.remove,:) = repmat(settings.constants,1,Q);
end