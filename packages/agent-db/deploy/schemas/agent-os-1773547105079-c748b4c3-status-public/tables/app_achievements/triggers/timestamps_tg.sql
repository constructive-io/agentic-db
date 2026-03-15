-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-status-public".app_achievements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

