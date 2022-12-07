package Service;

import Entities.Cart;
import Entities.Product;
import Model.CartModel;
import Model.ProductModel;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class CartService {

    public int handleTotalPriceRow(String idProduct) {
        int total = 0;
        List<Cart> lc = new CartModel().getListCartWithUserOrProduct(idProduct, 1);
        ProductModel pm = new ProductModel();
        for (Cart cart : lc) {
            if (cart.getProductId().equalsIgnoreCase(idProduct)) {
                total += pm.getProductById(idProduct).getPriceDisc() * cart.getQuantity();
            }
        }
        return total;
    }
}
