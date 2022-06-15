This is the terraform transit gateway attachment module.

Steps:

1. Allocate new CIDR range to VPC (?) discuss with team members
2. Raise request with CCOE to share TGW with account (CCOE-389)
3. After tgw is shared, Deploy TGW attachment resource with TGW attachment ID using this module.
    3.1 The variables needed are described in the variables.tf
4. Add the tgw module inside the vpc terraform code and raise a PR to merge into the master for that vpc.

5. Raise requests with network team for source / destination / port access list between on-prem and platform MVP account (https://jira.pyrsoftware.ca/jira/servicedesk/customer/portal/3/create/149?q=firewa&q_time=1655127146802) - Also need to confirm the range of IPs allocated to users accessing the VPN (vpn.starsgroup.com)
6. Update return routes in AWS to use TGW attachment to return traffic on prem