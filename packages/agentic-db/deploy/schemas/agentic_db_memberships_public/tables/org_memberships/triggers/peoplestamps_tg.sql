-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/triggers/peoplestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER peoplestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_memberships_public.org_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps ( );

