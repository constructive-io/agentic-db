-- Deploy: schemas/agent_db_status_public/tables/org_achievements/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_status_public.org_achievements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

