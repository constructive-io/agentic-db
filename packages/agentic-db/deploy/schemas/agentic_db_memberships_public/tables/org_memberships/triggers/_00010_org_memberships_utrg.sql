-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/triggers/_00010_org_memberships_utrg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/trigger_fns/org_memberships_utg


CREATE TRIGGER _00010_org_memberships_utrg
BEFORE UPDATE ON agentic_db_memberships_public.org_memberships
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.org_memberships_utg ( );

