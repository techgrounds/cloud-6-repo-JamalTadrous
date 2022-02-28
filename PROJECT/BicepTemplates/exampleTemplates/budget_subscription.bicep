targetScope = 'resourceGroup'

param deploymentName string = 'budget${utcNow()}'

module budget './main.bicep' = { // Dit natuurlijk veranderen naar de naam van het Project DEPLOYMENT-TEMPLATE naam.
  name: deploymentName
  params: {
    name: 'MyBudget'
    amount: 130
    resetPeriod: 'Monthly'
    startDate: '2021-07-01'
    notifications: {
      notification1: {
        enabled: true
        operator: 'GreaterThan'
        threshold: 50
        contactEmails: [
          'john.smith@microsoft.com'
        ]
        contactRoles: [
          'Owner'
        ]
        contactGroups: []
      }
      notification2: {
        enabled: true
        operator: 'GreaterThan'
        threshold: 90
        contactEmails: [
          'john.smith@microsoft.com'
        ]
        contactRoles: [
          'Owner'
        ]
        contactGroups: []
      }
    }
  }
}
