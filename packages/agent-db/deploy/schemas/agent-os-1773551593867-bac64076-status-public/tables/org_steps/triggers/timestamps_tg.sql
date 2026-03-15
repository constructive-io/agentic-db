-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-status-public".org_steps
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

