-- Deploy: schemas/agentic_db_users_public/tables/users/triggers/app_mbr_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_private/trigger_fns/app_mbr_create


CREATE TRIGGER app_mbr_trg
AFTER INSERT ON agentic_db_users_public.users
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.app_mbr_create ( );

