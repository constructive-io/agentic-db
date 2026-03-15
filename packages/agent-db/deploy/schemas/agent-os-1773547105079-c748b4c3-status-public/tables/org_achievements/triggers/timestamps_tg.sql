-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773547105079-c748b4c3-status-public".org_achievements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

