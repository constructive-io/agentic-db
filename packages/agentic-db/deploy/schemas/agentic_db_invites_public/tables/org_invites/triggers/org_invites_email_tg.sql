-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/triggers/org_invites_email_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_private/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_private/trigger_fns/org_invites_insert_before_tg


CREATE TRIGGER org_invites_email_tg
BEFORE INSERT ON agentic_db_invites_public.org_invites
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_invites_private.org_invites_insert_before_tg ( );

