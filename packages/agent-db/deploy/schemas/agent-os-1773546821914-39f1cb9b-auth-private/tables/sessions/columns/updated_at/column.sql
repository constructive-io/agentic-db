-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  ADD COLUMN updated_at timestamptz;

