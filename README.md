I) Prerequisites:

	""" Before you continue, ensure you meet following requirements """

1.	Choose 1 in 2 environments:

	1.1	install python 3.7.7
		- install require python libraries:
			cd to:	aspire-demo\requirements
			cmd:	pip install -r requirements.txt

	1.2	using my venv folder (recommend):
			cd to:	aspire-demo\venv
			cmd:	venv\Script\activate

2.	Add PATH for chromedriver (using Chrome 86): aspire-demo\requirements\webdrivers\bin


II)	Run demo test:
	
	""" run test via RIDE (robotframewok IDE) of via commands """
	
1. via RIDE:

	After acivate venv, run ride.py to open RIDE to edit testcase
	navigate to:	aspire-demo\1-tests\functional
	open suite:		1.Registration-Validation.robot
	tick testcaes:	1-Valid-Registration
	click RUN button or F8
	Analyze logs in folder aspire-demo\2-results

2.	via cmd:
	cd to:			aspire-demo\1-tests\functional
	cmd: robot -outputdir 2-results 1.Registration-Validation.robot
