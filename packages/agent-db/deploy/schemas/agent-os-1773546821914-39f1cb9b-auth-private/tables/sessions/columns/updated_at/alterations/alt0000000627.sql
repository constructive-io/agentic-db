-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/updated_at/alterations/alt0000000627
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  ALTER COLUMN updated_at SET DEFAULT now();

