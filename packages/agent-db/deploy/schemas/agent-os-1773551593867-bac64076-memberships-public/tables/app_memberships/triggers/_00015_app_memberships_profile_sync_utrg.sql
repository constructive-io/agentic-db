-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/triggers/_00015_app_memberships_profile_sync_utrg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/app_memberships_profile_sync_tg


CREATE TRIGGER _00015_app_memberships_profile_sync_utrg
BEFORE UPDATE ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".app_memberships_profile_sync_tg ( );

