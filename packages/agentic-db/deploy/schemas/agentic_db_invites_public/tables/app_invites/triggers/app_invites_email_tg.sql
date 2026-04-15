-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/triggers/app_invites_email_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_private/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table
-- requires: schemas/agentic_db_invites_private/trigger_fns/app_invites_insert_before_tg


CREATE TRIGGER app_invites_email_tg
BEFORE INSERT ON agentic_db_invites_public.app_invites
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_invites_private.app_invites_insert_before_tg ( );

