-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/is_anonymous/alterations/alt0000000607
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/is_anonymous/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  ALTER COLUMN is_anonymous SET NOT NULL;

