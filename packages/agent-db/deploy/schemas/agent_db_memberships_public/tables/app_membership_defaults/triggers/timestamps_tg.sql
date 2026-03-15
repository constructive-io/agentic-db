-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/triggers/timestamps_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agent_db_memberships_public.app_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

