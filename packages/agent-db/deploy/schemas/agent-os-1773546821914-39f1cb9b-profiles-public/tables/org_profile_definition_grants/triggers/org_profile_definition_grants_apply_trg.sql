-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/triggers/org_profile_definition_grants_apply_trg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-private/trigger_fns/org_profile_definition_grants_apply_tg


CREATE TRIGGER org_profile_definition_grants_apply_trg
AFTER INSERT ON "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-profiles-private".org_profile_definition_grants_apply_tg ( );

