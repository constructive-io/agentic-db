-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_levels/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773550873753-b6c4a3e1-status-public".app_levels
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

