{
	"contents": {
		"222a5b38-ed13-4612-aa34-1b7c292950c0": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.sap.demo.workflow.post.emp.myworkflow",
			"subject": "MyWorkflow",
			"name": "MyWorkflow",
			"documentation": "Employee Workflow - Post",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"821d7508-beba-48b0-bec5-78a4321d5980": {
					"name": "ServiceTask1"
				},
				"450effbb-37a5-4404-9856-b8652dcd9b04": {
					"name": "ServiceTask2"
				},
				"5d847979-767e-46dd-90de-c5e196994b33": {
					"name": "UserTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"f07b5204-9306-405c-85aa-228d52a3e6ea": {
					"name": "SequenceFlow2"
				},
				"f419a984-db67-4c25-b0ff-c74acf219afe": {
					"name": "SequenceFlow3"
				},
				"1caed9db-c3ec-447c-ac87-af27d0c26b7e": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"11e0ba6c-cafd-484d-b83b-4f30a7ff91fd": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"821d7508-beba-48b0-bec5-78a4321d5980": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Northwind",
			"destinationSource": "consumer",
			"path": "/TripPinServiceRW/People/",
			"httpMethod": "POST",
			"xsrfPath": "/TripPinServiceRW/$metadata",
			"requestVariable": "${context.employeedata}",
			"responseVariable": "${context.resultemployee}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"450effbb-37a5-4404-9856-b8652dcd9b04": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"destinationSource": "consumer",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.businessrule}",
			"responseVariable": "${context.resultbusinessrule}",
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"5d847979-767e-46dd-90de-c5e196994b33": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Employee Product Data",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/MyWorkflow/Mine_Employee.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "mine_employee"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "5d847979-767e-46dd-90de-c5e196994b33"
		},
		"f07b5204-9306-405c-85aa-228d52a3e6ea": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "821d7508-beba-48b0-bec5-78a4321d5980",
			"targetRef": "450effbb-37a5-4404-9856-b8652dcd9b04"
		},
		"f419a984-db67-4c25-b0ff-c74acf219afe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "450effbb-37a5-4404-9856-b8652dcd9b04",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"1caed9db-c3ec-447c-ac87-af27d0c26b7e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "5d847979-767e-46dd-90de-c5e196994b33",
			"targetRef": "821d7508-beba-48b0-bec5-78a4321d5980"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"6a21dc1b-786a-48e6-9a1f-1f48fd88ecbd": {},
				"146bc66c-631a-45d0-86cb-309ea5a8a4e0": {},
				"31090e8d-2d63-43d6-b280-9407f6d2b39e": {},
				"7eb9d94e-c573-4d44-bfb6-dc4e9e8ae0e0": {},
				"5691180c-e1b0-4bf5-ae26-6b3ae191a051": {},
				"92da9e87-7a6f-4340-bc8e-7738fcf990c4": {}
			}
		},
		"11e0ba6c-cafd-484d-b83b-4f30a7ff91fd": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/Sample.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 424,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "5691180c-e1b0-4bf5-ae26-6b3ae191a051",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6a21dc1b-786a-48e6-9a1f-1f48fd88ecbd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 12,
			"y": 204,
			"width": 100,
			"height": 60,
			"object": "821d7508-beba-48b0-bec5-78a4321d5980"
		},
		"146bc66c-631a-45d0-86cb-309ea5a8a4e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,264 62,314",
			"sourceSymbol": "6a21dc1b-786a-48e6-9a1f-1f48fd88ecbd",
			"targetSymbol": "31090e8d-2d63-43d6-b280-9407f6d2b39e",
			"object": "f07b5204-9306-405c-85aa-228d52a3e6ea"
		},
		"31090e8d-2d63-43d6-b280-9407f6d2b39e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 12,
			"y": 314,
			"width": 100,
			"height": 60,
			"object": "450effbb-37a5-4404-9856-b8652dcd9b04"
		},
		"7eb9d94e-c573-4d44-bfb6-dc4e9e8ae0e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,374 62,424",
			"sourceSymbol": "31090e8d-2d63-43d6-b280-9407f6d2b39e",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "f419a984-db67-4c25-b0ff-c74acf219afe"
		},
		"5691180c-e1b0-4bf5-ae26-6b3ae191a051": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "5d847979-767e-46dd-90de-c5e196994b33"
		},
		"92da9e87-7a6f-4340-bc8e-7738fcf990c4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,154 62,204",
			"sourceSymbol": "5691180c-e1b0-4bf5-ae26-6b3ae191a051",
			"targetSymbol": "6a21dc1b-786a-48e6-9a1f-1f48fd88ecbd",
			"object": "1caed9db-c3ec-447c-ac87-af27d0c26b7e"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 3
		}
	}
}