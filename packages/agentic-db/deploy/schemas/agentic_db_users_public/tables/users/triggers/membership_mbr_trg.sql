-- Deploy: schemas/agentic_db_users_public/tables/users/triggers/membership_mbr_trg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/trigger_fns/membership_mbr_create


CREATE TRIGGER membership_mbr_trg
AFTER INSERT ON agentic_db_users_public.users
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.membership_mbr_create ( );

