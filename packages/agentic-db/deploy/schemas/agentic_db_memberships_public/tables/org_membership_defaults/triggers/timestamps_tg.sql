-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_memberships_public.org_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

