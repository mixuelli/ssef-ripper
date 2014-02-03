create database SSEFpdfData;
use SSEFpdfData;

-- Current page: 1

create table page1 (
id bigint,
PHRisk boolean default false,
Tissues boolean default false,
ChecklistReview boolean default false,
Humans boolean default false,
WorkedWithStudent boolean default false,
StudentName varchar(300),
ContinForm boolean default false,
VAnimals boolean default false,
ASPrinted varchar(300),
HAZ boolean default false,
QualSciForm boolean default false,
ASDateofReview varchar(300),
ASEmail varchar(300),
ResearchInst boolean default false,
HazQS boolean default false,
PriorApprovalRequired boolean default false,
HazRisk boolean default false,
ProjectTitle varchar(300),
PHQS boolean default false,
ReviewRules boolean default false,
VTQS boolean default false,
VT5B boolean default false,
HumanSub boolean default false,
VT5A boolean default false,
AllProjectItems boolean default false,
ResearchPlan boolean default false,
ApprovalForm boolean default false,
ASPhone varchar(300),
PotHaz boolean default false,
Microorganisms boolean default false,
PH6B boolean default false,
AdultSponsorChecklist boolean default false,
Vertebrates boolean default false,
rDNA boolean default false,
IncHumans boolean default false,
StudentChecklist boolean default false,
PH6A boolean default false,
SampleInformedConsent boolean default false,
primary key(id));

-- Current page: 2

create table page2 (
id bigint,
SCActEnd varchar(300),
SCNonAdd1B varchar(300),
SCNonAdd1A varchar(300),
SCfield boolean default false,
1AASEmail varchar(300),
SCNonName1 varchar(300),
SCOtherExpl varchar(300),
SCNonName2 varchar(300),
1ASchoolPhone varchar(300),
SCActStart varchar(300),
SCResInst boolean default false,
1APhone varchar(300),
TeamMember2 varchar(300),
TeamMember3 varchar(300),
SCContinuenum1 boolean default false,
SCContinuenum0 boolean default false,
SCResPlan boolean default false,
1AAdultSpon varchar(300),
1AGrade varchar(300),
1ASchoolAdd2 varchar(300),
SCAbstract boolean default false,
1ASchoolAdd1 varchar(300),
SCOther boolean default false,
SCNonPhone2 varchar(300),
SCNonPhone1 varchar(300),
ProjectTitle varchar(300),
SCNonAdd2A varchar(300),
1ASchool varchar(300),
1ATeamLeader varchar(300),
1AEmail varchar(300),
CF7 boolean default false,
SCNonAdd2B varchar(300),
SCHome boolean default false,
SCSchool boolean default false,
primary key(id));

-- Current page: 4

create table page4 (
id bigint,
1BRegSsRCChairPrinted varchar(300),
1BStateSRCChairDate varchar(300),
1BStateSRCChairPrinted varchar(300),
1BSRCChairDate varchar(300),
1BDateAck varchar(300),
1BStudentPrinted varchar(300),
1BSRCPrinted varchar(300),
1BDateApp varchar(300),
1BSRCIRBAppDate varchar(300),
1BSRCChairAppDate varchar(300),
1BParentName varchar(300),
1BSRCChairPrinted varchar(300),
primary key(id));

-- Current page: 5

create table page5 (
id bigint,
ProjectTitle varchar(300),
1CRulesReviewnum1 boolean default false,
1CRulesReviewnum0 boolean default false,
1CGroupExpnum1 boolean default false,
1CGetIdea varchar(300),
1CSubsetnum1 boolean default false,
1CSAPrinted varchar(300),
1CSAEmail varchar(300),
1CSpecificProcs varchar(300),
1CUseEquip boolean default false,
1CPerformExp boolean default false,
1CSubsetnum0 boolean default false,
1CSADateSigned varchar(300),
1CCreative varchar(300),
1cGroupExpnum0 boolean default false,
StudentsName varchar(300),
1CSAAddress varchar(300),
1CSAInstitution varchar(300),
1CSATitle varchar(300),
1CGroupExp varchar(300),
primary key(id));

-- Current page: 6

create table page6 (
id bigint,
QSDSPhone varchar(300),
QSEducation varchar(300),
QSWhoSuper varchar(300),
QSAddress varchar(300),
QSPosition varchar(300),
StudentName varchar(300),
ApprovalDate varchar(300),
QSControlnum1 boolean default false,
QSControlnum0 boolean default false,
QSHumansnum0 boolean default false,
QSHumansnum1 boolean default false,
QSSupernum1 boolean default false,
QSSupernum0 boolean default false,
QSRuleReviewnum1 boolean default false,
QSDSEmail varchar(300),
QSRuleReviewnum0 boolean default false,
QSDSPrinted varchar(300),
ProjectTitle varchar(300),
QSHazardnum1 boolean default false,
QSSubsetnum1 boolean default false,
QSSubsetnum0 boolean default false,
QSHazardnum0 boolean default false,
QSSuperTraining varchar(300),
QSName varchar(300),
QSEmail varchar(300),
QSInstitution varchar(300),
QSDSApprovalDate varchar(300),
ProjectTitle2 varchar(300),
QSVertnum1 boolean default false,
QSPrinted varchar(300),
QSVertnum0 boolean default false,
QSDegrees varchar(300),
primary key(id));

-- Current page: 7

create table page7 (
id bigint,
ProjectTitle varchar(300),
RAQSEmail varchar(300),
RAQSTraining varchar(300),
RAQSPrinted varchar(300),
RAIDAssess varchar(300),
RAQSPosition varchar(300),
RAQSReviewDate varchar(300),
StudentName varchar(300),
RAIDHazards varchar(300),
RAResources varchar(300),
RADisposal varchar(300),
RASafety varchar(300),
primary key(id));

-- Current page: 8

create table page8 (
id bigint,
qsno boolean default false,
Minimalrisk boolean default false,
HSAttachSurvey boolean default false,
minorassentNA boolean default false,
ProjectTitlenum5 varchar(300),
StudentNamenum4 varchar(300),
HSASEmail varchar(300),
HSAS varchar(300),
HSIRB2date varchar(300),
HSWorkingQSnum0 boolean default false,
HSIRBPrinted3 varchar(300),
HSWorkingQSnum1 boolean default false,
HSIRBPrinted2 varchar(300),
HSIRBPrinted1 varchar(300),
Projectapproved boolean default false,
HSIRBDATE varchar(300),
minorassentno boolean default false,
18NA boolean default false,
ParentalNA boolean default false,
LegalInstrument boolean default false,
parentalno boolean default false,
HSIRBDegree3 varchar(300),
HSIRBDegree2 varchar(300),
notapproved boolean default false,
HSIRBDegree1 varchar(300),
18no boolean default false,
HSInformedConsentAttached boolean default false,
writtenminorassentyes boolean default false,
QSyes boolean default false,
morethanminimal boolean default false,
18yes boolean default false,
HSIRB3date varchar(300),
parentalyes boolean default false,
HSSubmitResPlan boolean default false,
primary key(id));

-- Current page: 9

create table page9 (
id bigint,
ProjectTitle varchar(300),
CFRisks1 varchar(300),
CFPurpose varchar(300),
CFAskedTo1 varchar(300),
StudentName varchar(300),
CFParticipantPrinted varchar(300),
CFParentAssentPrinted varchar(300),
CFParentAssentDate varchar(300),
CFASEmail varchar(300),
CFAdultAssentDate varchar(300),
CFAdultSponsor varchar(300),
CFBenefits varchar(300),
CFConfidentiality1 varchar(300),
CFTimeRequired varchar(300),
primary key(id));

-- Current page: 10

create table page10 (
id bigint,
5aDSreview boolean default false,
VandDSrequired boolean default false,
Vapprovaldate varchar(300),
ProjectTitle varchar(300),
5ACommonName varchar(300),
5adsdate varchar(300),
5ADSPrinted varchar(300),
Vcert boolean default false,
StudentName varchar(300),
VDSQSRequired boolean default false,
SRCChair5adate varchar(300),
Vcertdoses boolean default false,
5ASRCChairPrinted varchar(300),
DSrequired boolean default false,
5aDAcert boolean default false,
5ADSEmail varchar(300),
5AVetPrinted varchar(300),
5AHousing varchar(300),
5AVetEmail varchar(300),
Vcare boolean default false,
5AAftermath varchar(300),
primary key(id));

-- Current page: 11

create table page11 (
id bigint,
ProjectTitle varchar(300),
5bqspidate varchar(300),
5BProtocolNumber varchar(300),
5BDeath varchar(300),
StudentName varchar(300),
5BStudentrole varchar(300),
5BNumberUse varchar(300),
5BSpeciesUsed varchar(300),
5BLabTraining varchar(300),
5BTissueUsenum1 boolean default false,
5BTissueUsenum0 boolean default false,
5BQSPIPrintedName varchar(300),
primary key(id));

-- Current page: 12

create table page12 (
id bigint,
6asrcbsl1 boolean default false,
6aSRCIACUC boolean default false,
ProjectTitle varchar(300),
6absl2date varchar(300),
6asrcapproval varchar(300),
6ADisposal varchar(300),
StudentName varchar(300),
6ABiologicAgents varchar(300),
6aiacucdate varchar(300),
6aSRCChairPrintedName varchar(300),
QSDSTraining varchar(300),
6ABiosafetyLevel varchar(300),
6anoapprovalrequired boolean default false,
6absl1date varchar(300),
6AQSStudentTraining varchar(300),
6AConcurnum0 boolean default false,
6AConcurnum1 boolean default false,
6AConcurExp varchar(300),
6aSRCbsl2 boolean default false,
6ASite varchar(300),
6AMinimizeRisk varchar(300),
primary key(id));
