-- Deploy: schemas/agentic_db_invites_public/tables/app_claimed_invites/indexes/app_claimed_invites_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/updated_at/column


CREATE INDEX app_claimed_invites_updated_at_idx ON agentic_db_invites_public.app_claimed_invites ( updated_at );

