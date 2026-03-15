-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

