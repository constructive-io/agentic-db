-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/username/alterations/alt0000000004
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/username/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ADD CONSTRAINT users_username_chk 
    CHECK (character_length(username) <= 256);

