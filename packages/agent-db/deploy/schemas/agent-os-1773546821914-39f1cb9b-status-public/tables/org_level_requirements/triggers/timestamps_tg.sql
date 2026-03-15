-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

