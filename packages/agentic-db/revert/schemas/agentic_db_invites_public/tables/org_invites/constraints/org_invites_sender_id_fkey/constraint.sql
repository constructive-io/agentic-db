-- Revert: schemas/agentic_db_invites_public/tables/org_invites/constraints/org_invites_sender_id_fkey/constraint


ALTER TABLE agentic_db_invites_public.org_invites 
  DROP CONSTRAINT org_invites_sender_id_fkey;


