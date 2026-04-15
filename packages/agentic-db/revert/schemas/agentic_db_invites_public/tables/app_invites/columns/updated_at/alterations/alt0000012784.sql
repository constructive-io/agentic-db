-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/updated_at/alterations/alt0000012784


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


