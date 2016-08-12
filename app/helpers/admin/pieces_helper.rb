module Admin::PiecesHelper
  def publish_button(piece)
    piece.state == 'draft' ? link_to('Publish Piece',
                                     publish_admin_piece_path(piece),
                                     :method => :put, id: 'publish') :
                             link_to('Unpublish Piece',
                                     unpublish_admin_piece_path(piece),
                                     :method => :put)
  end
end
