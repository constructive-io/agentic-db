-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_primary/alterations/alt0000000710
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_primary/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails 
  ALTER COLUMN is_primary SET NOT NULL;

