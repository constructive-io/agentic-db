-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/triggers/_00000_app_memberships_default_profile_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/app_memberships_default_profile_tg


CREATE TRIGGER _00000_app_memberships_default_profile_trg
BEFORE INSERT ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".app_memberships_default_profile_tg ( );

