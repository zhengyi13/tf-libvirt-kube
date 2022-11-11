#cloud-config
preserve_hostname: False
hostname: ${domain}
fqdn: ${domain}.meyer.lan
password: $6$Q/fUpMVoF.uU3dx5$Bu/NAg5Aw4YzZtfqAbm/4N/qXz3uZ8VbQ0sSMuRKxzMCx.zjAnRg9yarphm.jI0o3invB6pxiJDYYJrpqUJMg1
chpasswd: { expire: False }
ssh_pwauth: True
# root is forbidden from ssh-ing ssh-in
disable_root: True
ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDOVUJvVNplTnWVLq5OZx7Os3Ol0HHimBs7wby9xoUyOTZfvXU3+s/gt/X1iQvBYK8ay5s0RVBkCmFBm1lID6tlhAfsJQ3la4nNhJS+44yF3lUJ8+wtDm9QmUjPKwIwLPrmKO0VJMtiOXHJVwjVIbMqOm0RpZr7ZT/E463ByqdZL4rQgHXcGSL7bU0JXI2VGMUPL5m4HpfjEF89ogg0Ita31dxi12F47caoQUEV2rmnwucOXiExHahG7yOghvVhl0eMoyc3h8PqAh+8JnU1xYKUVdZ0SDXklXsFzzc6aUL9Y/JBiUIoX9uW3N6L78FeAmXdseWQKpY1GT3EajG1jQi1NlNT3dNJzZjwOgfEnx8FT8EHG2V7Prta/9keRq548nezwZ5q9vUO3y172gQEuTVOTe+nGaizGSLoo2gNUFpPI7eOI02irIYJVdu13Y6anF6Ld9hUILbTuoDkWPGHbtzuGdAnShB5b+XXGS3qunxHH46r3p27ZotIGCDRSsbTJRk= zhengyi@DESKTOP-BQL60ED
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCcD9RVoWIuPyXkqrqpm+W2427jOK9WdWsVxCT/Liy1EmmEzURkrf+CrnWRQG4G+ORvqZAhWb3g1MOoeEuA+6tFR9/4ukjzEVaOd+aO8JK+Q6E4cLITxzmAyBsVz5nfYqvKCMxYfmGo3puAWf0MG8TkMcc5oVij3b4fhp+SkylkTe5XTLqwIfNWJOvOAD6n6qXlT/UIXKrxPHuw8KBjMgTHUYwe6TUDIK0QaPWVV8sZVeE8Ct25JopO6yYXTYbPVygZFDzYXdsIlIrcY8st/p7KtAZeAvCxyQ7dId7NAwSnWg5Z+Llg7AviqeVrkH+0KH7Rt+bRrbfYQJaP7N2+UXkf zheng@DESKTOP-BQL60ED
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtx9TDEDmM3xsvvracvnBgHwtOnGeIWj9Nsvgh8t0Xsof0FBPPzhYO4q/pN+3cMqfDrwjWncMY5XMdWG+uj6JXj8vBaikXiX6A7n+EJX6XJBqHiOvp4KzweFX2oVxLOUgeQ1EUa3Y+6oNSWoO8THNQApal68l7AwUvS0p7or6kyLdpJX4RFkucuJgyycrsE5tLHiKavNaCSuVhbHm6iizJToXTJN7AcF+7tHFnMq69vsYcxbx6ATSw8YNgbuaOX4xdj8k7sKyfCTrXnsG5bq+47hXGRxgaDXUcR1hJViYtpStsR7qExh6q0Lqr59efbmsoT1S1ty47a1vMg+cwzsz27wUUfMarsL+WyuAxiiO3b6xOj3laL5eiKQGHOPUowQiYidJV5h7+Wp9TZrLr+WKkZ67JecP8Tx0keNe939lAci20SX53ur62GeYGou78yubtFLP+kC9AKhdRb6NKUecWJ5QI8Oif6X4fqCkkkN5GkjLWI0wVbtA9mtYjmjyZa8M= zhengyi@vmbox