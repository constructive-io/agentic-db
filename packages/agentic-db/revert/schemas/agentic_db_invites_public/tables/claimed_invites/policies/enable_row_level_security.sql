-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/policies/enable_row_level_security


ALTER TABLE "agentic_db_invites_public".claimed_invites 
  DISABLE ROW LEVEL SECURITY;


