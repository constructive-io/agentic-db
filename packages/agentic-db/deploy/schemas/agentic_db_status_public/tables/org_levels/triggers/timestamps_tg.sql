-- Deploy: schemas/agentic_db_status_public/tables/org_levels/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_status_public.org_levels
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

