-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/multiple/alterations/alt0000003640


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN multiple DROP NOT NULL;


