[squid_servers]
%{ for index, ip in squid_server_hostnames ~}
${format("squid-server-%02d", index+1)} ansible_host=${ip}
%{ endfor ~}
 
%{ for ip in jenkins_primary ~}
jenkins-primary ansible_host=${ip}
%{ endfor ~}
 
%{ for ip in jenkins_standby ~}
jenkins-standby ansible_host=${ip}
%{ endfor ~}
 
%{ for index, ip in jenkins_slaves_int ~}
${format("jenkins-slave-int-%02d", index+1)} ansible_host=${ip}
%{ endfor ~}

%{ for index, ip in jenkins_slaves_dmz ~}
${format("jenkins-slave-dmz-%02d", index+1)} ansible_host=${ip}
%{ endfor ~}
 
[jenkins_primary]
jenkins-primary
 
[jenkins_standby]
jenkins-standby
 
[jenkins_masters]
jenkins-primary
jenkins-standby
 
[jenkins_jobs]
jenkins-primary
 
[jenkins_slave]
%{ for index, ip in jenkins_slaves_int ~}
${format("jenkins-slave-int-%02d", index+1)}
%{ endfor ~}
%{ for index, ip in jenkins_slaves_dmz ~}
${format("jenkins-slave-dmz-%02d", index+1)}
%{ endfor ~}

 
[jenkins_masters:vars]
jenkins_masters=true
efs_file_system_id=${efs_file_id}
 
[jenkins_primary:vars]
jenkins_primary=true
 
[jenkins_standby:vars]
jenkins_standby=true
 
[jenkins_slave:vars]
jenkins_slave=true
 
[jenkins_jobs:vars]
jenkins_jobs=true
 
[all:vars]
ansible_ssh_private_key_file = /home/ec2-user/rhel_som.pem
