-- Deploy: schemas/agent_db_status_public/tables/app_steps/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_status_public.app_steps
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

