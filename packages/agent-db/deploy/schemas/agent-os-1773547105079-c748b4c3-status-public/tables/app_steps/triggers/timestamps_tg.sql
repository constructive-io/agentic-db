-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-status-public".app_steps
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

