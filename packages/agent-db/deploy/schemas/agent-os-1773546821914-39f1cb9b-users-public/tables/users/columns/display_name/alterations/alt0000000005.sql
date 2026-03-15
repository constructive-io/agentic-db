-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/display_name/alterations/alt0000000005
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/display_name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ADD CONSTRAINT users_display_name_chk 
    CHECK (character_length(display_name) <= 256);

