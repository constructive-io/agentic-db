-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/triggers/org_profiles_cascade_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_private/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_profiles_private/trigger_fns/org_profiles_cascade_tg


CREATE TRIGGER org_profiles_cascade_trg
AFTER UPDATE ON "agentic_db_profiles_public".org_profiles
FOR EACH ROW
WHEN (OLD.permissions IS DISTINCT FROM NEW.permissions)
EXECUTE PROCEDURE "agentic_db_profiles_private".org_profiles_cascade_tg ( );

