-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/triggers/app_profile_definition_grants_apply_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-private/trigger_fns/app_profile_definition_grants_apply_tg


CREATE TRIGGER app_profile_definition_grants_apply_trg
AFTER INSERT ON "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773551593867-bac64076-profiles-private".app_profile_definition_grants_apply_tg ( );

