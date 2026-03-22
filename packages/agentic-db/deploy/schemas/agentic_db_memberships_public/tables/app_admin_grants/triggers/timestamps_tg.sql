-- Deploy: schemas/agentic_db_memberships_public/tables/app_admin_grants/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_admin_grants/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_memberships_public".app_admin_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

