-- Deploy: schemas/agent_db_users_public/tables/users/triggers/membership_mbr_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_memberships_private/trigger_fns/membership_mbr_create


CREATE TRIGGER membership_mbr_trg
AFTER INSERT ON agent_db_users_public.users
FOR EACH ROW
EXECUTE PROCEDURE agent_db_memberships_private.membership_mbr_create ( );

