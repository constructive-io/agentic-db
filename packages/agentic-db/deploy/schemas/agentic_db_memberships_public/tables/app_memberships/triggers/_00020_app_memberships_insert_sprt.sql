-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/triggers/_00020_app_memberships_insert_sprt
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/trigger_fns/app_memberships_insert_sprt_tg


CREATE TRIGGER _00020_app_memberships_insert_sprt
AFTER INSERT ON agentic_db_memberships_public.app_memberships
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.app_memberships_insert_sprt_tg ( );

