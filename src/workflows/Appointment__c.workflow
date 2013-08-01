<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_VP_Status</fullName>
        <description>Set the VIP status to true</description>
        <field>VIP__c</field>
        <literalValue>1</literalValue>
        <name>Set VP Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>San Francisco VIPs</fullName>
        <actions>
            <name>Set_VP_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 or 2 or 3 or 4</booleanFilter>
        <criteriaItems>
            <field>Appointment__c.City_Address__c</field>
            <operation>equals</operation>
            <value>San Francisco</value>
        </criteriaItems>
        <criteriaItems>
            <field>Appointment__c.City_Address__c</field>
            <operation>equals</operation>
            <value>Chicago</value>
        </criteriaItems>
        <criteriaItems>
            <field>Appointment__c.City_Address__c</field>
            <operation>equals</operation>
            <value>London</value>
        </criteriaItems>
        <criteriaItems>
            <field>Appointment__c.City_Address__c</field>
            <operation>equals</operation>
            <value>Sydney</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
