-- Deploy: schemas/agentic_db_invites_public/tables/invites/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table


ALTER TABLE "agentic_db_invites_public".invites 
  ENABLE ROW LEVEL SECURITY;

