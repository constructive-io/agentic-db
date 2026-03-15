-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

