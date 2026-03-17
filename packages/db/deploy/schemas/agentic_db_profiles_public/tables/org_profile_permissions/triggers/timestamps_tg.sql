-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_profiles_public".org_profile_permissions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

