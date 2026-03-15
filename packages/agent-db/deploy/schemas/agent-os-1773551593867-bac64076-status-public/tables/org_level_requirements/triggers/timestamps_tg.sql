-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agent-os-1773551593867-bac64076-status-public".org_level_requirements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

