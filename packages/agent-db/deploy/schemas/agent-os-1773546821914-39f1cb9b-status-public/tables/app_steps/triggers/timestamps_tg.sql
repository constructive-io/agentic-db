-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-status-public".app_steps
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

