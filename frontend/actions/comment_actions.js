export const CommentConstants = {
  CREATE_COMMENT: "CREATE_COMMENT",
  DESTROY_COMMENT: "DESTROY_COMMENT"
};

export const createComment = (comment) => ({
  type: CommentConstants.CREATE_COMMENT,
  comment
});

export const destroyComment = (id) => ({
  type: CommentConstants.DESTROY_COMMENT,
  id
});
