-- Revert: schemas/agentic_db_invites_public/tables/app_invites/constraints/app_invites_pkey/constraint


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP CONSTRAINT app_invites_pkey;


