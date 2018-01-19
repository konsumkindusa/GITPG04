<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Danger</fullName>
        <field>Prompt_contact_status__c</field>
        <literalValue>Danger</literalValue>
        <name>Danger</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Not_Contacted_Promptly</fullName>
        <field>Prompt_contact_status__c</field>
        <literalValue>Not Contacted Promptly</literalValue>
        <name>Not Contacted Promptly</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Prompt Contact Checker</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Web</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Open - Not Contacted</value>
        </criteriaItems>
        <criteriaItems>
            <field>Lead.Prompt_contact_status__c</field>
            <operation>equals</operation>
            <value>New,Danger</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Not_Contacted_Promptly</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Prompt_contact_by__c</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Danger</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.Prompt_contact_by__c</offsetFromField>
            <timeLength>-4</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
</Workflow>
