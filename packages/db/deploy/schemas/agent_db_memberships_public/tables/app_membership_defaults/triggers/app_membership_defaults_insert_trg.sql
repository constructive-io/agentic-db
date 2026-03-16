-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/triggers/app_membership_defaults_insert_trg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


CREATE TRIGGER app_membership_defaults_insert_trg
BEFORE INSERT ON "agent_db_memberships_public".app_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE utils.ensure_singleton ( );

