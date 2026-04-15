-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_token/alterations/alt0000012764
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_token/column


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN invite_token SET NOT NULL;

