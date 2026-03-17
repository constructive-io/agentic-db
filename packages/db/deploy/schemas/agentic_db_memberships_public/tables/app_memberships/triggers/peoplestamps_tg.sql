-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/triggers/peoplestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_memberships_public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

