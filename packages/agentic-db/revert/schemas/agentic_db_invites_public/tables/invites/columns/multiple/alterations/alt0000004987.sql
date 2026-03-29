-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/multiple/alterations/alt0000004987


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN multiple DROP NOT NULL;


