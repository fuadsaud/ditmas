alias pm="pulumi"

function pmp
  pulumi $argv --stack ellipsus/production
end

function pms
  pulumi $argv --stack ellipsus/staging
end
